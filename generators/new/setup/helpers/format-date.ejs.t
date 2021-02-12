---
to: src/helpers/format-date.js
---
// https://date-fns.org/docs/format
import format from 'date-fns/format'

export default formatDate = date => {
  return format(date, 'MMM do, yyyy')
}