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
    const array = new Array(this.value.length - 1);
    for (let i = 0; i < this.value.length - 1; i++) {
      array[i] = this.value[i];
    }
    const result = this.value[this.value.length - 1];

    this.value = array;

    return result;
  }

  shift(): string {
    const array = new Array(this.value.length - 1);
    for (let i = 1; i < this.value.length; i++) {
      array[i - 1] = this.value[i];
    }

    const result = this.value[0];

    this.value = array;

    return result;
  }
}

export default Arr;
