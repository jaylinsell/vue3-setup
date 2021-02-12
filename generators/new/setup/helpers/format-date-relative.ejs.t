---
to: src/helpers/format-date-relative.js
---
// https://date-fns.org/docs/formatDistance
import formatDistance from 'date-fns/formatDistance'

// https://date-fns.org/docs/isToday
import isToday from 'date-fns/isToday'

export default formatDateRelative = (fromDate, toDate = new Date()) => {
  return formatDistance(fromDate, toDate) + (isToday(toDate) ? ' ago' : '')
}