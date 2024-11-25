import Arr from "../arr";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new Arr();

    expect(newArray.value).toHaveLength(0);
  });

  it("should add an element to the array", () => {
    const newArray = new Arr();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
  });

  it("should remove and return the last element using pop()", () => {
    const newArray = new Arr();

    newArray.push("a");
    newArray.push("b");

    const poppedElement = newArray.pop();
    
    expect(newArray.value).toHaveLength(1); 
    expect(poppedElement).toEqual("b");
  });

  it("should return undefined when pop() is called on an empty array", () => {
    const newArray = new Arr();
    const poppedElement = newArray.pop();
    
    expect(newArray.value).toHaveLength(0); 
    expect(poppedElement).toBeUndefined(); 
  });

  it("should remove and return the first element using shift()", () => {
    const newArray = new Arr();

    newArray.push("a");
    newArray.push("b");
    
    const shiftedElement = newArray.shift();
    
    expect(newArray.value).toHaveLength(1);
    expect(shiftedElement).toEqual("a");
  });

  it("should return undefined when shift() is called on an empty array", () => {
    const newArray = new Arr();
    const shiftedElement = newArray.shift();
    
    expect(newArray.value).toHaveLength(0);
    expect(shiftedElement).toBeUndefined();
  });
});
