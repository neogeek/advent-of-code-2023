package main

import (
    "fmt"
    "log"
    "os"
    "strings"
    "regexp"
    "strconv"
)

const lineBreak = "\n"

func main() {
    content, err := os.ReadFile("input.txt")
    if err != nil {
        log.Fatal(err)
    }

    lines := strings.Split(strings.Trim(string(content), lineBreak), lineBreak)

    pattern := regexp.MustCompile(`^([^0-9]+)?(?P<first>[0-9]{1})|(?P<second>[0-9]{1})([^0-9]+)?$`)
    groupNames := pattern.SubexpNames()

    pattern2 := regexp.MustCompile(`(one|two|three|four|five|six|seven|eight|nine)`)

    total := 0

    for i := 0; i < len(lines); i += 1 {

        counter := 0

        pattern2MatchCount := len(pattern2.FindAllStringSubmatch(lines[i], -1))

        // fmt.Printf("%s\n", lines[i])

        // fmt.Printf("pattern2MatchCount: %d\n", pattern2MatchCount)

        lines[i] = pattern2.ReplaceAllStringFunc(lines[i], func(value string) string {
            counter++

            // fmt.Printf("counter: %d\n", counter)

            if counter == 1 || counter == pattern2MatchCount {

                if value == "one" {
                    return pattern2.ReplaceAllString(value, "1")
                } else if value == "two" {
                    return pattern2.ReplaceAllString(value, "2")
                } else if value == "three" {
                    return pattern2.ReplaceAllString(value, "3")
                } else if value == "four" {
                    return pattern2.ReplaceAllString(value, "4")
                } else if value == "five" {
                    return pattern2.ReplaceAllString(value, "5")
                } else if value == "six" {
                    return pattern2.ReplaceAllString(value, "6")
                } else if value == "seven" {
                    return pattern2.ReplaceAllString(value, "7")
                } else if value == "eight" {
                    return pattern2.ReplaceAllString(value, "8")
                } else if value == "nine" {
                    return pattern2.ReplaceAllString(value, "9")
                }

                return pattern2.ReplaceAllString(value, "0")

            } else {
                return value
            }
        })

        stringNumber := ""

        // fmt.Printf("%s\n", lines[i])

        for _, match := range pattern.FindAllStringSubmatch(lines[i], -1) {
            for groupIdx, group := range match {
                name := groupNames[groupIdx]
                if name == "first" || name == "second" {
                    stringNumber += group;
                }
            }
        }

        if len(stringNumber) == 1 {
            stringNumber += stringNumber
        }

        // fmt.Printf("%s\n", stringNumber)

        i, _ := strconv.Atoi(stringNumber)

        total += i
    }

    fmt.Print(total)
}
