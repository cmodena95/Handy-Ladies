// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css'
const initFlatpickr = () => {
    const flatElement = document.querySelector(".form-control.string.optional.flatpickr");
    if (flatElement){
        console.log(flatElement);
        flatpickr(flatElement, {
            altInput: true
        });
    }
}

export { initFlatpickr }
