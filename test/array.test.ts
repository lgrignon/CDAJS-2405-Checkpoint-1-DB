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
});

describe ("Offer", () => {
  it("should recognize localisation of an offer", () => {
    const newOffer = new Offer();
    const cityExpected = 'Paris';

    expect(newOffer).toContain(cityExpected);
  });

  /* We can do more tests
  it("should find all offers", () => {
    ...
  });

  it("should add an offer", () => {
    ...
  });

  it("should update an offer", () => {
    ...
  });

  it("should delete an offer", () => {
    ...
  });

  it("should find company that create an offer", () => {
    ...
  });

  it("should retrieve all user's information that candidate to an offer", () => {
    ...
  });

  it("should retrieve all user's information that candidate to an offer", () => {
    ...
  });
  */
});
