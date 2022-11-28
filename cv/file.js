
  const text = document.getElementById('about');
  const prog = 'Chào mọi người hiện tại mình là sinh viên tại trường Đại Học Cần Thơ chuyên ngành mạng máy tính và truyền thông dữ liệu, mình đang muốn trở thành một web developer và 3D Artist ngoài ra mình còn có một chút đam mê với việc làm game và dựng hình 3D';
  let idx =1;

  setInterval(writeText, 80);

  function writeText(){
    text.innerText = prog.slice(0,idx);

    idx++;
    if(idx>prog.length) {
        idx = 1;
    }
  }

  

  var textWrapper = document.querySelector('.career');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.career',
    scale: [8,1],
    opacity: [0,1],
    translateZ: 0,
    easing: "easeOutExpo",
    duration: 1200,
    delay: (el, i) => 70*i
  }).add({
    targets: '.career',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1200
  });