const inputHeader = document.querySelector('.input-header');
const dropdown = document.querySelector('.dropdown');

const fetchData = async serachTerm => {
  const res = await axios.get('http://www.omdbapi.com/', {
    params: {
      apikey: 'd9835cc5',
      s: serachTerm
    }
  });
  return res.data.Search || [];
};

const movieChoose = document.querySelector('.movieChoose');
let timer;
const debounce = event => {
  if (timer) {
    clearTimeout(timer);
  }
  timer = setTimeout(() => {
    getMovie(event.target.value);
    tumer = null;
  }, 1500);
};

const getMovie = async key => {
  const movies = await fetchData(key);
  movieChoose.innerHTML = '';
  if (!movies.length) {
    dropdown.classList.remove('is-active');
    return;
  }

  dropdown.classList.add('is-active');
  for (let movie of movies) {
    const option = document.createElement('a');
    const imgSrc = movie.Poster === 'N/A' ? '' : movie.Poster;
    option.classList.add('dropdown-item');
    option.classList.add('dropdown-item');
    option.innerHTML = `
      <img src="${imgSrc}" />
      ${movie.Title}
    `;
    option.addEventListener('click', e => {
      dropdown.classList.remove('is-active');
      inputHeader.value = movie.Title;
      onMovieSelect(movie);
    });

    movieChoose.appendChild(option);
  }
};
dropdown.classList.remove('is-active');

inputHeader.addEventListener('input', debounce);
root = document.querySelector('.searchAuto');
document.addEventListener('click', e => {
  if (!root.contains(e.target)) {
    dropdown.classList.remove('is-active');
  }
});

const onMovieSelect = async movie => {
  const response = await axios.get('http://www.omdbapi.com/', {
    params: {
      apikey: 'd9835cc5',
      i: movie.imdbID
    }
  });
  document.querySelector(
    '#summary'
  ).innerHTML = `<img  class="img-poster" src="${movie.Poster}" />`;
  const test = document.querySelector('.img-poster');
  console.log(test);
};
