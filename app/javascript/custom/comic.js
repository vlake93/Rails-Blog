class Preloader {
  constructor() {
    this.element = document.querySelector(".loader-container");
    this.table = document.querySelector('.comics-table')
    this.hide()
  }

  hide() {
    setTimeout(() => {
     this.element.style.display = "none" 
     this.table.style.display = "flex" 
    }, 2000)
  }
}

export { Preloader}