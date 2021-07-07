document.getElementById('dateNumber').innerHTML = new Date().getDate()

const pair = window.location.search.slice(1).split('=');
if (pair[0] === 'url') {
  const url = 'webcal://' + pair[1]
  const urlElement = document.getElementById('calurl')
  urlElement.setAttribute('href', url)
  console.log(url, urlElement);
} else {
  console.error('url in query is missing!')
}
