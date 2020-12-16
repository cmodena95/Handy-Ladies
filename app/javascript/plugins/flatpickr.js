// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";

const initFlatpickr = () => {
    const flatElement = document.querySelector(".flatpickr");
    if (flatElement){
        flatpickr(flatElement, {
           disableMobile: 'true',
           enableTime: 'true'
        });
    }
}

export { initFlatpickr }
