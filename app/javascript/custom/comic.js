class Preloader {
  constructor() {
    this.element = document.querySelector(".loader-container");
    this.hide()
  }

  hide() {
    setTimeout(() => {
     this.element.style.display = "none" 
    }, 2000)
  }
}

export { Preloader}