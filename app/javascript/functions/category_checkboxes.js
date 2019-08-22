const checkboxSelect = () => {
  const container = document.querySelector(".checkboxjs");
  if (container)
  {
    const inputs = container.querySelectorAll("input");
    const images = container.querySelectorAll(".cat-icon");
    images.forEach((img) => {
      img.addEventListener("click", () => {
        images.forEach((img2) => {
          img2.classList.remove("selected");
        })
        img.classList.add("selected");
      })
    })
  }
}

export { checkboxSelect }

