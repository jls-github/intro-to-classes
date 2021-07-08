class Airplane {
    constructor(color, type) {
        this.color = color;
        this.type = type
    }

    fly() {
        console.log("The airplane is flying away!!!!")
    }
}

const airplane = new Airplane("blue", "747")

console.log(airplane)
console.log(airplane.fly())