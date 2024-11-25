import Arr from "../arr";

describe("Array", () => {
	it("should create an array", () => {
		const newArray = new Arr();

		expect(newArray.value).toHaveLength(0);
	});

	it("should add an element in the array", () => {
		const newArray = new Arr();
		const result = newArray.push("a");

		expect(newArray.value).toHaveLength(1);
		expect(result).toEqual(1);
	});

	it("should remove the last element from the array and return this element", () => {
		const array = new Arr();
		array.value = ["pomme", "poire", "banane"];
		const result = array.pop();

		expect(array.value).toHaveLength(2);
		expect(result).toEqual("banane");
	});

	it("should remove the first element from the array and return this element", () => {
		const array = new Arr();
		array.value = ["pomme", "poire", "banane"];
		const result = array.shift();

		expect(array.value).toHaveLength(2);
		expect(result).toEqual("pomme");
	});

	it("should return undefined on method pop when the array is empty ", () => {
		const array = new Arr();
		const result = array.pop();

		expect(result).toBeUndefined;
	});

	it("should return undefined on method shift when the array is empty ", () => {
		const array = new Arr();
		const result = array.shift();

		expect(result).toBeUndefined;
	});
});
