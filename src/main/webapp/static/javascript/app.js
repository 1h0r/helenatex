let currentId = 'info-content-item-1';

function showItem(id) {
    document.getElementById(currentId).classList.remove('visible');
    document.getElementById(id).classList.add('visible');
    currentId = id;
}

// document
//     .querySelector('#product-image')
//     .addEventListener('click', e => {
//         let El = `${e.target.attr('data-link')}`;
        // console.log(e.srcElement.dataset.link);
        // console.log(e.target.getAttribute('data-link'));
    // });
