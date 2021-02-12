
---
to: src/helpers/format-money.js
---
export default formatMoney = val => new Intl.NumberFormat('en-AU', {
        style: 'currency',
        currency: 'AUD'
    }).format(val)