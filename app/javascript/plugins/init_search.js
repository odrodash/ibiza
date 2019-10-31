const initSearch = () => {
  const search = document.querySelector("#home-search")
  const product = document.querySelector("#product_name")

  if (search) {
    search.addEventListener("click", (event) => {
      event.preventDefault();
      if (product.value === "") {
        alert("Please, complete the field.")
      } else {
        location.href = `/search?product=${product.value}`
      }
    })
  }
}

export { initSearch }
