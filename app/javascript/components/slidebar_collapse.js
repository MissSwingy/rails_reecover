const collapseSlideBar = () => {
  const button = document.getElementById('sidebarCollapse');
  const sideBar = document.getElementById('sidebar');
  button.addEventListener("click", (event) => {
    sideBar.classList.toggle('active');
  });
}

export { collapseSlideBar };
