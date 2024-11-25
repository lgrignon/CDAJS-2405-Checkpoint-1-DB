class Arr {
  value: string[] = [];

  push(el: string): number {
    const array = new Array(this.value.length + 1);

    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }
    array[this.value.length] = el;
    this.value = array;
    return this.value.length;
  }

  pop(): string {
    const removedElement: string = "";
    return removedElement;
  }

  shift(): string {
    const removedElement: string = "";
    return removedElement;
  }
}

export default Arr;
