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
    if (this.value.length === 0) {
      return "undefined";
    }

    const lastElement = this.value[this.value.length - 1];
    const array = new Array(this.value.length - 1);

    for (let i = 0; i < this.value.length - 1; i++) {
      array[i] = this.value[i];
    }

    this.value = array;
    return lastElement;
  }

  shift(): string {
    const firstElement = this.value[0];
    const array = new Array(this.value.length - 1);

    for (let i = 0; i < this.value.length - 1; i++) {
      array[i - 1] = this.value[i + 1];
    }

    this.value = array;
    return firstElement;
  }
}

export default Arr;
