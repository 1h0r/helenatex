let addImg = document.querySelector('#add-images');
if (addImg) {

  function openImageSelect() {
    document.getElementById('imageSelect').style.display = "block";
  }

  function closeImageSelect() {
    document.getElementById('imageSelect').style.display = "none";
  }

  addImg.addEventListener('click', e => {
    openImageSelect();
  });

  document.querySelector('.close').addEventListener('click', e => {
    closeImageSelect();
  })
}

let file = document.getElementById('addImage'),
    mFile = document.getElementById('addMainImage');
showImageList(file, "listImagesFile");
showImageList(mFile, "listMainImagesFile");

function showImageList(img, span) {
    if (img) {
        img.addEventListener('change', () => {
            let files = img.files,
                arr = Object.keys(files),
                text;

            arr.forEach((i) => {
                text += `${files[i].name} \n`;
            })
            document.getElementById(span).innerText = text;
        })
    }
}