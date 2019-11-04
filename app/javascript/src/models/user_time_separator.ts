class UserTimeSeparator {
    separatedAt: number;
    constructor(separatedAt: number){
        // MEMO: Date.now()はミリ秒を返すので秒に直す
        this.separatedAt = separatedAt / 1000;
    }

    getSeparatedAt() {
        return this.separatedAt;
    }
}

export default UserTimeSeparator;
