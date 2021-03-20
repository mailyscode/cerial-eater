const searchRiceRecipes = (event) => {
  event.preventDefault();
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
  const results = document.querySelector('#results')
  fetch('/recipes/rice')
    .then(response => response.json())
    .then((data) => {
      results.innerHTML = '';
      data.forEach((recipe) => {
        const card = recipe.card;
        results.insertAdjacentHTML("beforeend", card);
      });
    document.getElementById("moreRiceButton").hidden = false;
    document.getElementById("moreWheatButton").hidden = true;
    document.getElementById("moreCornButton").hidden = true;
  });
};

const searchWheatRecipes = (event) => {
  event.preventDefault();
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
  const results = document.querySelector('#results')
  fetch('/recipes/wheat')
    .then(response => response.json())
    .then((data) => {
      results.innerHTML = '';
      data.forEach((recipe) => {
        const card = recipe.card;
        results.insertAdjacentHTML("beforeend", card);
      });
    document.getElementById("moreWheatButton").hidden = false;
    document.getElementById("moreRiceButton").hidden = true;
    document.getElementById("moreCornButton").hidden = true;
    });
};

const searchCornRecipes = (event) => {
  event.preventDefault();
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
  const results = document.querySelector('#results')
  fetch('/recipes/corn')
    .then(response => response.json())
    .then((data) => {
      results.innerHTML = '';
      data.forEach((recipe) => {
        const card = recipe.card;
        results.insertAdjacentHTML("beforeend", card);
      });
    document.getElementById("moreCornButton").hidden = false;
    document.getElementById("moreRiceButton").hidden = true;
    document.getElementById("moreWheatButton").hidden = true;
    });
};

const initSearch = () => {
  const rice = document.querySelector("#rice");
  const wheat = document.querySelector("#wheat");
  const corn = document.querySelector("#corn");
  if (rice) {
    rice.addEventListener("click", searchRiceRecipes);
    wheat.addEventListener("click", searchWheatRecipes);
    corn.addEventListener("click", searchCornRecipes);
  }
};

export { initSearch };
