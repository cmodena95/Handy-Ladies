// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css'

const initFlatpickr = () => {
    const flatElement = document.querySelector(".flatpickr");
    console.log(flatElement);
    if (flatElement){
        flatpickr(flatElement, {
            altInput: true
        });
    }
}

export { initFlatpickr }
