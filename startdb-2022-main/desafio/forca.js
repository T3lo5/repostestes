class Forca {

  chutar(letra) {
    if ( letra in this.palavra ) {
      this.palavra[letra] = true;
    } else {
      this.erros++;
    }
  } 

  buscarEstado() {
    if ( this.erros >= 6 ) {
      return "perdeu";
    }
    if ( this.palavra.every(v => v === true) ) {
      return "ganhou";
    }
    return "em jogo";
  }

  buscarDadosDoJogo() {
    letrasChutadas = Object.keys(this.palavra).filter(v => this.palavra[v] === true);
    vidas = 6 - this.erros;
    palavras = this.palavra.every(v => v === true) ? this.palavra.join('') : this.palavra.join('_');
    return `Letras chutadas: ${letrasCHutadas.join(', ')}\nVidas: ${vidas}\nPalavra: ${palavras}`;
  }

  constructor(palavra) {
    this.palavra = palavra.split('').map(v => false);
    this.erros = 0;
  }
}

module.exports = Forca;

