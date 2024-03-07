const track = document.getElementById("image-track");

if (track) {
  let isDragging = false;
  let startClientX = 0;
  let prevPercentage = 0;

  const updatePosition = (clientX) => {
    requestAnimationFrame(() => {
      if (!isDragging) return;

      const mouseDelta = startClientX - clientX;
      const maxDelta = window.innerWidth / 0.25;
      const percentage = (mouseDelta / maxDelta) * -100;
      const nextPercentageUnconstrained = prevPercentage + percentage;
      const nextPercentage = Math.max(Math.min(nextPercentageUnconstrained, 0), -100);

      track.dataset.percentage = nextPercentage;
      track.style.transform = `translate(${nextPercentage}%, -50%)`;

      const images = track.getElementsByClassName("image");
      for (const image of images) {
        image.style.objectPosition = `${100 + nextPercentage}% center`;
      }
    });
  };

  const handleStart = (clientX) => {
    isDragging = true;
    startClientX = clientX;
    prevPercentage = parseFloat(track.dataset.percentage || "0");
  };

  const handleMove = (clientX) => {
    if (isDragging) {
      updatePosition(clientX);
    }
  };

  const handleEnd = () => {
    isDragging = false;
  };

  // Unified event listeners for both mouse and touch events
  window.addEventListener("mousedown", (e) => handleStart(e.clientX));
  window.addEventListener("touchstart", (e) => handleStart(e.touches[0].clientX));
  window.addEventListener("mousemove", (e) => handleMove(e.clientX));
  window.addEventListener("touchmove", (e) => handleMove(e.touches[0].clientX));
  window.addEventListener("mouseup", handleEnd);
  window.addEventListener("touchend", handleEnd);

  window.addEventListener('keydown', function(e) {
    // Định nghĩa một bước di chuyển cố định cho mỗi lần nhấn phím
    const step = 5; // Giá trị này có thể được điều chỉnh để thay đổi tốc độ cuộn
  
    // Lấy giá trị hiện tại của phần trăm cuộn
    let currentPercentage = parseFloat(track.dataset.percentage || "0");
  
    // Xử lý sự kiện nhấn phím mũi tên trái
    if (e.key === "ArrowLeft") {
      // Tăng giá trị phần trăm để cuộn sang trái
      currentPercentage = Math.min(currentPercentage + step, 0);
    }
    // Xử lý sự kiện nhấn phím mũi tên phải
    else if (e.key === "ArrowRight") {
      // Giảm giá trị phần trăm để cuộn sang phải
      currentPercentage = Math.max(currentPercentage - step, -100);
    }
  
    // Cập nhật giá trị phần trăm mới vào dataset
    track.dataset.percentage = currentPercentage;
  
    // Thực hiện cuộn
    track.animate({
      transform: `translate(${currentPercentage}%, -50%)`
    }, { duration: 1200, fill: "forwards" });
  
    // Áp dụng hiệu ứng cho mỗi hình ảnh
    for (const image of track.getElementsByClassName("image")) {
      image.animate({
        objectPosition: `${100 + currentPercentage}% center`
      }, { duration: 1200, fill: "forwards" });
    }
  });
  

  document.addEventListener("DOMContentLoaded", () => {
    document.querySelectorAll("img").forEach((img) => {
      img.classList.add("image");
      img.setAttribute("draggable", "false");
    });
  });
}
