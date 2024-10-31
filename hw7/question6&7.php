//Question6&7:
<?php
class AnswerClass {
    private $property;

    public function __construct($value) {
        $this->property = $value;
    }

    public function getProperty() {
        return $this->property;
    }

    public function setProperty($value) {
        $this->property = $value;
    }

    public static function staticMethod() {
    return "This is a static method";
}

}
