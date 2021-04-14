package worthless

import "testing"

func TestWorthless(t *testing.T) {
	expected := "tcu is worthless."
	output := Worthless("tcu")
	if output != "tcu is worthless." {
		t.Errorf("Saída: %v, Esperado: %v.", output, expected)
	}
}
