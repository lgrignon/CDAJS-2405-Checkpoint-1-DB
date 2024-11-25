import Arr from "../arr";

describe("Array", () => {
    it("should create an array", () => {
        const newArray = new Arr();

        expect(newArray.value).toHaveLength(0);
    });

    it("should had an element in the array", () => {
        const newArray = new Arr();
        const result = newArray.push("a");

        expect(newArray.value).toHaveLength(1);
        expect(result).toEqual(1);
    });

    it("should remove the last element in the array", () => {
        const newArray = new Arr();
        newArray.value = ["bonjour", "salut", "coucou", "hello"];
        const result = newArray.pop();

        expect(newArray.value).toHaveLength(3);
        expect(result).toEqual("hello");
    });

    it("should remove the first element in the array", () => {
        const newArray = new Arr();
        newArray.value = ["bonjour", "salut", "coucou", "hello"];
        const result = newArray.shift();

        expect(newArray.value).toHaveLength(3);
        expect(result).toEqual("bonjour");
    });
});
