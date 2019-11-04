import UserTimeSeparator from "../src/models/user_time_separator.ts"

window.onload = () => {
    const submit = document.getElementById("submit");
    submit.addEventListener("click", formSubmitEvent);
}

const formSubmitEvent = (e) => {
    const separatedAtDOM = document.getElementById("separatedAt");
    const userTimeSeparator = new UserTimeSeparator(Date.now());
    separatedAtDOM.value = userTimeSeparator.getSeparatedAt();
}
