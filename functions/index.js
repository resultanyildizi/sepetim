const functions = require("firebase-functions");
const admin = require("firebase-admin");
const firebase_tools = require("firebase-tools");

admin.initializeApp();

exports.changeGroupCount = functions.https.onCall(async (data, context) => {
  try {
    const userId = data["userId"];
    const categoryId = data["categoryId"];
    const operation = data["operation"];

    if (userId && userId !== "" && categoryId && categoryId !== "") {
      const category = admin
        .firestore()
        .collection("users")
        .doc(userId)
        .collection("categories")
        .doc(categoryId);

      const groupCount = (await category.get()).data().groupCount;

      if (groupCount === null) {
        await category.set({ groupCount: 0 }, { merge: true });
      } else {
        const groupCountNum = parseInt(groupCount);
        var newGroupCount = groupCountNum;

        if (operation === "increase") {
          newGroupCount += 1;
        } else if (operation === "decrease") {
          newGroupCount -= 1;
        }
        await category.update({ groupCount: newGroupCount });
      }
      return {
        type: "success",
        message: "successful",
      };
    } else {
      return {
        type: "error",
        code: "ERROR_INVALID_DATA",
        message: "Invalid data",
      };
    }
  } catch (e) {
    return {
      type: "error",
      code: "ERROR_INVALID_DATA",
      message: e.message,
    };
  }
});

exports.clearData = functions.https.onCall(async (data, context) => {
  const userId = data["userId"];
  const categoryId = data["categoryId"];
  const groupId = data["groupId"];
  const itemId = data["itemId"];

  const promises = [];

  if (!userId || userId === "") {
    return {
      type: "error",
      code: "ERROR_INVALID_USER_ID",
      message: "Invalid user id",
    };
  }

  if (!context.auth || context.auth.uid !== userId) {
    return {
      type: "error",
      code: "ERROR_INSUFFICIENT_PERMISSION",
      message: "Insufficient permission.",
    };
  }
  var firestorePath = `/users/${userId}`;
  var storagePath = `users/${userId}`;

  if (categoryId) {
    firestorePath = `${firestorePath}/categories/${categoryId}`;
    storagePath = `${storagePath}/${categoryId}`;

    log("firestore path: " + firestorePath);
    log("storage path: " + storagePath);

    if (groupId) {
      firestorePath = `${firestorePath}/groups/${groupId}`;
      storagePath = `${storagePath}/${groupId}`;

      log("firestore path: " + firestorePath);
      log("storage path: " + storagePath);

      if (itemId) {
        firestorePath = `${firestorePath}/items/${itemId}`;
        storagePath = `${storagePath}/${itemId}`;

        log("firestore path: " + firestorePath);
        log("storage path: " + storagePath);
      }
    }
  } else {
    return {
      type: "error",
      code: "ERROR_INVALID_CATEGORY_ID",
      message: "Invalid category id",
    };
  }

  try {
    promises.push(clearFirestoreData(firestorePath));
    promises.push(clearStorageData(storagePath));
    await Promise.all(promises);
    return {
      type: "success",
      message: "successful",
    };
  } catch (err) {
    return {
      type: "error",
      message: err.message,
      code: err.code,
    };
  }
});

const clearStorageData = async (storagePath) => {
  try {
    const bucket = admin.storage().bucket();
    const prefix = storagePath;
    log("bucket name: " + bucket.name);
    log("base url : " + bucket.baseUrl);
    await bucket.deleteFiles({
      force: true,
      prefix,
    });
  } catch (err) {
    log("storage error: " + err.message);
    throw err;
  }
};
const clearFirestoreData = async (firestorePath) => {
  try {
    await firebase_tools.firestore.delete(firestorePath, {
      project: process.env.GCLOUD_PROJECT,
      recursive: true,
      yes: true,
    });
  } catch (err) {
    log("firestore error: " + err.message);
    throw err;
  }
};

function log(message) {
  functions.logger.log(message);
}
