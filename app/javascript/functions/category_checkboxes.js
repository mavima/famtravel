const checkboxSelect = () => {
  const container = document.querySelector(".checkboxjs");
  if (container)
  {
    const inputs = container.querySelectorAll(".age-buttons");
    const images = container.querySelectorAll(".boxjs");
    images.forEach((img) => {
      img.addEventListener("click", () => {
        if (img.classList.contains("selected"))
        {
          img.classList.remove("selected");
          inputs[Array.from(images).indexOf(img)].checked = false
        }
        else
        {
          img.classList.add("selected");
          inputs[Array.from(images).indexOf(img)].checked = true
        }
      })
    })
  }
}

export { checkboxSelect }

