<?php
interface IElectronicPart {
    public function getSpecs();
}

class ElectronicPart {
    private $manufacturer;
    private $price;
    private $model;
}

class Screen extends ElectronicPart implements IElectronicPart {
    private $size;
    private $panel;

    public function __construct($manufacturer, $price, $model, $panel, $size) {
        $this->manufacturer = $manufacturer;
        $this->price = $price;
        $this->model = $model;
        $this->panel = $panel;
        $this->size = $size;
    }

    public function getSpecs() {
        return 
            'Screen manufacturer: ' . $this->manufacturer . 
            ', model: '. $this->model . 
            ', Price: ' . $this->price;
    }
}

class Mouse extends ElectronicPart implements IElectronicPart{
    private $isWired;

    public function __construct($manufacturer, $price, $model, $isWired) {
        $this->manufacturer = $manufacturer;
        $this->price = $price;
        $this->model = $model;
        $this->isWired = $isWired;
    }

    public function getSpecs() {
        return 
            'Mouse manufacturer: ' . $this->manufacturer . 
            ', model: '. $this->model . 
            ', Price: ' . $this->price;
    }
}

class Keyboard extends ElectronicPart implements IElectronicPart{
    private $isWired;

    public function __construct($manufacturer, $price, $serial, $isWired) {
        $this->manufacturer = $manufacturer;
        $this->price = $price;
        $this->model = $model;
        $this->isWired = $isWired;
    }

    public function getSpecs() {
        return 
            'Keyboard manufacturer: ' . $this->manufacturer . 
            ', model: '. $this->model . 
            ', Price: ' . $this->price;
    }
}

class Computer extends ElectronicPart implements IElectronicPart{
    private $motherboard;
    private $processor;
    private $hardDrive;
    private $ram;
    private $graphicCard;

    public function __construct(
        $manufacturer, $price, $model, 
        $motherboard, $processor, $hardDrive, $ram, $graphicCard) {
        $this->manufacturer = $manufacturer;
        $this->price = $price;
        $this->model = $model;
        $this->motherboard = $motherboard;
        $this->processor = $processor;
        $this->hardDrive = $hardDrive;
        $this->ram = $ram;
        $this->graphicCard = $graphicCard;
    }
    public function getSpecs() {
        return 
            'Computer manufacturer: ' . $this->manufacturer . 
            ', model: '. $this->model . 
            ', Price: ' . $this->price;
    }
}

class purchase {
    private $screen;
    private $mouse;
    private $keyboard;
    private $computer;

    public function __construct($screen, $mouse, $keyboard, $computer) {
        $this->screen = $screen;
        $this->mouse = $mouse;
        $this->keyboard = $keyboard;
        $this->computer = $computer;   
    }

    public function getFullPurchaseDetails() {
        return $this->screen->getSpecs().'<br>'.
                $this->mouse->getSpecs().'<br>'.
                $this->keyboard->getSpecs().'<br>'.
                $this->computer->getSpecs().'<br><br>';
    }
}
?>