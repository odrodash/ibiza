import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import "flatpickr/dist/themes/material_blue.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const getBookedDates = () => {
  const bookedDates = document.querySelector("#disabled-bookings")
  if (bookedDates) {
    return JSON.parse(bookedDates.dataset.bookings);
  }
}

// const getAvailableDates = () => {
//   const availableDates = document.querySelector("#available-Dates")
// if (availableDates) {
//     return JSON.parse(availableDates.dataset.products);
//   }
// }


flatpickr("#range_start", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
})

flatpickr(".datepicker-to-customer",
{
    disable: getBookedDates(),
    dateFormat: "Y-m-d",
    minDate: "today",
    maxDate: new Date().fp_incr(14)
}

  )

