package main

import (
	"encoding/json"
	"net/http"
)

type Data struct {
	Data string
}

func main() {
	http.HandleFunc("/", helloWorld)

	http.ListenAndServe(":80", nil)
}

func helloWorld(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	json.NewEncoder(w).Encode(Data{"Hello World!"})
}
