const changeSelectedTab = (index, parentDiv) => {
  const tabContents = parentDiv.querySelectorAll('.tab-content')
  const selectedTabContents = parentDiv.querySelector('.tab-content.tab-selected')
  const vw = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
  if(index < Array.prototype.indexOf.call(tabContents, selectedTabContents)){
    while (tabContents[index].style.left !== '0%'){
      console.log(tabContents[index].style.left)
      tabContents.forEach((tab) => {
        let currentPercentage = parseInt(tab.style.left.slice(0,-1), 10)
        currentPercentage += 100
        tab.style.left = `${currentPercentage}%`
      })
      if (tabContents[index].style.left === '1000%') { tabContents[index].style.left = '0%'}
    }
  } else if ( index > Array.prototype.indexOf.call(tabContents, selectedTabContents)){
    while (tabContents[index].style.left !== '0%' ){
      console.log(tabContents[index].style.left)
      tabContents.forEach((tab) => {
        let currentPercentage = parseInt(tab.style.left.slice(0,-1), 10)
        currentPercentage -= 100
        tab.style.left = `${currentPercentage}%`
      })
      if (tabContents[index].style.left === '-1000%') { tabContents[index].style.left = '0%'}
    }
  }
  selectedTabContents.classList.remove('tab-selected')
  tabContents[index].classList.add('tab-selected')
}
const jsTabs = () => {
  const parentDiv = document.querySelector('.js-tabs')
  if (parentDiv){
    const header = document.querySelector('.tabs-header')
    const tabs = header.querySelectorAll('.tab')
    tabs.forEach((tab) => {
      tab.addEventListener('click', (event) => {
        changeSelectedTab(Array.prototype.indexOf.call(tabs, tab), parentDiv)
        tabs.forEach((a_tab) => {
          if (tab === a_tab){
            tab.classList.add('tab-selected')
          } else {
            a_tab.classList.remove('tab-selected')
          }
        })
      })
    })
  }
}
export { jsTabs }






