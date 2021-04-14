package main

import (
	"fmt"
	"os"
	"strconv"
	"time"

	"github.com/devsres-com/worthless/pkg/worthless"
)

func main() {
	worthless_answer := worthless.Worthless("He")
	fmt.Println(worthless_answer)

	var arg int64 = 3600
	var err error = nil

	if len(os.Args) > 1 {
		arg, err = strconv.ParseInt(os.Args[1], 10, 32)
		if err != nil {
			return
		}
	}
	time.Sleep(time.Duration(arg) * time.Second)
	fmt.Println("My time has come.")

}
