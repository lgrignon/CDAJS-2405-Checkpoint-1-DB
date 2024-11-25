class Arr {
  value: string[] = [];

  push(el: string): number {
    // crée un nouveau tableau avec une entrée en plus
    const array = new Array(this.value.length + 1);

    // copie l'ancien tableau dans le nouveau
    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }
    // array est le nouveau tableau
    // this.value est l'ancien tableau
    // la valeur du dernier élément du tableau (sa longueur) est el
    array[this.value.length] = el;

    // remplace l'ancien tableau par le nouveau
    this.value = array;

    return this.value.length;
  }

  // pop()
  pop(): string | undefined {
    const array = new Array(this.value.length - 1);
    for (let i = 0; i < array.length; i++) {
      array[i] = this.value[i];
    }
    // récupère le dernier élément de l'ancien tableau
    const lastEl = this.value[this.value.length - 1];
    this.value = array;
    return lastEl;
    // = return this.value.pop();
  }

  // shift()
  shift(): string | undefined {
    const array = new Array(this.value.length - 1);
    for (let i = 0; i < array.length; i++) {
      array[i] = this.value[i + 1];
    }
    // récupère le premier élément de l'ancien tableau
    const firstEl = this.value[0];
    this.value = array;
    return firstEl;
    // = return this.value.shift();
  }
}



export default Arr;
