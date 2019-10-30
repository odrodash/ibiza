const initSearch = () => {
  const search = document.querySelector("#home-search")
  const product = document.querySelector("#product_name")
  const category = document.querySelector("#product_category")

  search.addEventListener("click", (event) => {
    event.preventDefault();
    if (product.value === "" && category.value === "") {
      alert("Please, complete the category and product field.")
    } else {
      location.href = `/results?product=${product.value}&category=${category.value}`
    }
  })
}

export { initSearch }
