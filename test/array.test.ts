import Arr from '../arr';

describe('Array', () => {
    it('creates an empty array', () => {
        const newArray = new Arr();
        expect(newArray.value).toHaveLength(0);
    });

    it('adds a character to the array', () => {
        const newArray = new Arr();
        const result = newArray.push('Ezio Auditore');
        expect(newArray.value).toHaveLength(1);
        expect(result).toEqual(1);
    });

    it('removes and returns the last character from the array using pop', () => {
        const newArray = new Arr();
        newArray.push('Altair Ibn-LaʼAhad');
        newArray.push('Ezio Auditore');
        const result = newArray.pop();
        expect(result).toBe('Ezio Auditore');
        expect(newArray.value).toEqual(['Altair Ibn-LaʼAhad']);
    });

    it('returns undefined when pop is called on an empty array', () => {
        const newArray = new Arr();
        const result = newArray.pop();
        expect(result).toBeUndefined();
    });

    it('removes and returns the first location from the array using shift', () => {
        const newArray = new Arr();
        newArray.push('Masyaf');
        newArray.push('Florence');
        const result = newArray.shift();
        expect(result).toBe('Masyaf');
        expect(newArray.value).toEqual(['Florence']);
    });

    it('returns undefined when shift is called on an empty array', () => {
        const newArray = new Arr();
        const result = newArray.shift();
        expect(result).toBeUndefined();
    });

    it('adds and removes artifacts in the array', () => {
        const newArray = new Arr();
        newArray.push('Apple of Eden');
        newArray.push('Shroud of Eden');
        const lastArtifact = newArray.pop();
        expect(lastArtifact).toBe('Shroud of Eden');
        expect(newArray.value).toEqual(['Apple of Eden']);
    });
});
