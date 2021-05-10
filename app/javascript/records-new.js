if (location.pathname.match("records/new")){
  function recordsNew () {
    const recordForm = document.getElementById('record-form');
    recordForm.addEventListener('input', () => {
      const sPoint = document.getElementById('s-point');
      const tPoint = document.getElementById('t-point');
      const hPoint = document.getElementById('h-point');
      const yPoint = document.getElementById('y-point');

      const sPointValue = sPoint.value;
      const tPointValue = tPoint.value;
      const hPointValue = hPoint.value;
      const yPointValue = yPoint.value;

      const array = [sPointValue, tPointValue, hPointValue, yPointValue];
      const sortedArray = array.sort(function(a,b) {
        return Number(b) - Number(a);
      });
      
      const sRank = sortedArray.indexOf(sPointValue) + 1;
      const tRank = sortedArray.indexOf(tPointValue) + 1;
      const hRank = sortedArray.indexOf(hPointValue) + 1;
      const yRank = sortedArray.indexOf(yPointValue) + 1;

      document.getElementById('s-rank').innerHTML = sRank;
      document.getElementById('t-rank').innerHTML = tRank;
      document.getElementById('h-rank').innerHTML = hRank;
      document.getElementById('y-rank').innerHTML = yRank;

      document.getElementById('s-rank-box').value = sRank;
      document.getElementById('t-rank-box').value = tRank;
      document.getElementById('h-rank-box').value = hRank;
      document.getElementById('y-rank-box').value = yRank;
    });
  };

  window.addEventListener('load', recordsNew);
}