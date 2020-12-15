// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";

const initFlatpickr = () => {
    const flatElement = document.querySelector(".flatpickr");
    console.log(flatElement);
    if (flatElement){
        flatpickr(flatElement, {
           disableMobile: 'true'
        });
    }
}

export { initFlatpickr }
