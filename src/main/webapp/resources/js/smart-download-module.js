$(document).ready(function () {
    const lineEl = document.querySelectorAll(".vertical-line")
    let topNumber = 110
    let topText = 'top:' + topNumber + 'px'
    if (lineEl.length == 1) {
        lineEl[0].setAttribute('style', 'display:none')
    } else if (lineEl.length > 1) {
        for (let i = 1; i < (lineEl.length - 1); i++) {
            lineEl[i].setAttribute('style', topText)
            topNumber += 75
            topText = 'top:' + topNumber + 'px'
        }
    }
    $('.download-img').click(function () {
        const userAgent = navigator.userAgent || navigator.vendor || window.opera
        let deviceKey = null
        if (/windows phone/i.test(userAgent))
            deviceKey = 'android'

        if (/android/i.test(userAgent))
            deviceKey = 'android'

        if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream)
            deviceKey = 'ios'

        if (deviceKey == 'android')
            window.open('https://goo.gl/XrWxoD', '_blank')
        else if (deviceKey == 'ios')
            window.open('https://goo.gl/TaSCIK', '_blank')
        else
            window.open('http://st.sweettracker.co.kr/', '_blank')
    })
})
