import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr("#range_start", {
  altInput: true,
  allowInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
})
