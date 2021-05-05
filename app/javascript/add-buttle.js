function battle () {
  const record = document.getElementById('record');
  const addBattle = document.getElementById('add-battle');

  addBattle.addEventListener('click', () => {
    console.log('イベント')
  });
}

window.addEventListener('load', battle);