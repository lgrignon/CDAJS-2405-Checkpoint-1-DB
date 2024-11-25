class Arr {
  value: string[] = [];

  // Ajoute un élément à la fin du tableau
  push(el: string): number {
    const array = new Array(this.value.length + 1);

    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }
    array[this.value.length] = el;
    this.value = array;
    return this.value.length;
  }

  // Supprime et retourne le dernier élément
  pop(): string | undefined {
    if (this.value.length === 0) {
      return undefined;
    }

    const array = new Array(this.value.length - 1);
    const lastElement = this.value[this.value.length - 1];

    for (let i = 0; i < array.length; i++) {
      array[i] = this.value[i];
    }

    this.value = array;
    return lastElement;
  }

  // Supprime et retourne le premier élément
  shift(): string | undefined {
    if (this.value.length === 0) {
      return undefined;
    }

    const array = new Array(this.value.length - 1);
    const firstElement = this.value[0];

    for (let i = 0; i < array.length; i++) {
      array[i] = this.value[i + 1];
    }

    this.value = array;
    return firstElement;
  }
}

export default Arr;
