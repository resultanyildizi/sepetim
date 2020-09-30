const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

exports.increaseGroupCount = functions.https.onCall(async (data, context) => {
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
        message: "Invalid data",
      };
    }
  } catch (e) {
    return {
      type: "error",
      message: e.message,
    };
  }
});
