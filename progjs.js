$(document).ready(function(){

    $('#productType').change(function(){
                $('#DVD').hide();
                $('#Book').hide();
                $('#Furniture').hide();

        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue == 1){
                $('#DVD').show();
                $('#Book').hide();
                $('#Furniture').hide();
            } else if (optionValue == 2){
                $('#DVD').hide();
                $('#Book').show();
                $('#Furniture').hide();
            } else if (optionValue == 3){
                $('#DVD').hide();
                $('#Book').hide();
                $('#Furniture').show();
            }
        });
    });

        // ********** validation **********

                // **sku validation **

        $('#check-sku').hide();
        $('#check-sku-value').hide();

        let skuError = true;
                
        $('#sku').keyup(function () {
            validateSku();
            
            });
        
            function validateSku() {
                let skuValue = $('#sku').val();
                    if (skuValue.length == "") {
                        $('#check-sku').show();
                            skuError = false;
                                return false;
                    } else if (!validateSkuData(skuValue)){
                        $('#check-sku-value').show();
                            skuError = false;
                                return false;
                    } else {
                        $('#check-sku').hide();
                        $('#check-sku-value').hide();

                    }
            }

            function validateSkuData(skuValue){
                var skupattern = new RegExp(/^[a-zA-Z0-9]+$/);
                return skupattern.test(skuValue);
            }

                    // **name validation **

        $('#check-name').hide();
        $('#check-name-value').hide();

        let nameError = true;
        
        $('#name').keyup(function () {
            validateName();
            
            });
        
            function validateName() {
                let nameValue = $('#name').val();
                    if (nameValue.length == "") {
                        $('#check-name').show();
                            nameError = false;
                                return false;
                    } else if (!validateNameData(nameValue)){
                        $('#check-name-value').show();
                            nameError = false;
                                return false;
                    } else {
                        $('#check-name').hide();
                        $('#check-name-value').hide();

                    }
            }

            function validateNameData(nameValue){
                var namepattern = new RegExp(/^[a-zA-Z]+$/);
                return namepattern.test(nameValue);
            }

            // **price validation **

            $('#check-price').hide();
            $('#check-price-value').hide();
    
            let priceError = true;
            
            $('#price').keyup(function () {
                validatePrice();
                
                });
            
                function validatePrice() {
                    let priceValue = $('#price').val();
                        if (priceValue.length == "") {
                            $('#check-price').show();
                                priceError = false;
                                    return false;
                        } else if (!validatePriceData(priceValue)){
                            $('#check-price-value').show();
                                priceError = false;
                                    return false;
                        } else {
                            $('#check-price').hide();
                            $('#check-price-value').hide();
    
                        }
                }
    
                function validatePriceData(priceValue){
                    var pricepattern = new RegExp(/^\d+(\.\d{2})|(\,\d{2})$/);
                    return pricepattern.test(priceValue);
                }
    
                    // **size validation **

                    $('#check-size').hide();
                    $('#check-size-value').hide();
            
                    let sizeError = true;
                    
                    $('#size').keyup(function () {
                        validateSize();
                        
                        });
                    
                        function validateSize() {
                            let sizeValue = $('#size').val();
                                if (sizeValue.length == "") {
                                    $('#check-size').show();
                                        sizeError = false;
                                            return false;
                                } else if (!validateSizeData(sizeValue)){
                                    $('#check-size-value').show();
                                        sizeError = false;
                                            return false;
                                } else {
                                    $('#check-size').hide();
                                    $('#check-size-value').hide();
            
                                }
                        }
            
                        function validateSizeData(sizeValue){
                            var sizepattern = new RegExp(/^[0-9]+$/);
                            return sizepattern.test(sizeValue);
                        }

                        // **weight validation **

                    $('#check-weight').hide();
                    $('#check-weight-value').hide();
            
                    let weightError = true;
                    
                    $('#weight').keyup(function () {
                        validateWeight();
                        
                        });
                    
                        function validateWeight() {
                            let weightValue = $('#weight').val();
                                if (weightValue.length == "") {
                                    $('#check-weight').show();
                                    weightError = false;
                                            return false;
                                } else if (!validateWeightData(weightValue)){
                                    $('#check-weight-value').show();
                                    weightError = false;
                                            return false;
                                } else {
                                    $('#check-weight').hide();
                                    $('#check-weight-value').hide();
            
                                }
                        }
            
                        function validateWeightData(weightValue){
                            var weightpattern = new RegExp(/^[0-9]+$/);
                            return weightpattern.test(weightValue);
                        }

                        // **height validation **

                    $('#check-height').hide();
                    $('#check-height-value').hide();
            
                    let heightError = true;
                    
                    $('#height').keyup(function () {
                        validateHeight();
                        
                        });
                    
                        function validateHeight() {
                            let heightValue = $('#height').val();
                                if (heightValue.length == "") {
                                    $('#check-height').show();
                                    heightError = false;
                                            return false;
                                } else if (!validateHeightData(heightValue)){
                                    $('#check-height-value').show();
                                    heightError = false;
                                            return false;
                                } else {
                                    $('#check-height').hide();
                                    $('#check-height-value').hide();
            
                                }
                        }
            
                        function validateHeightData(heightValue){
                            var heightpattern = new RegExp(/^[0-9]+$/);
                            return heightpattern.test(heightValue);
                        }

                        // **width validation **

                    $('#check-width').hide();
                    $('#check-width-value').hide();
            
                    let widthError = true;
                    
                    $('#width').keyup(function () {
                        validateWidth();
                        
                        });
                    
                        function validateWidth() {
                            let widthValue = $('#width').val();
                                if (widthValue.length == "") {
                                    $('#check-width').show();
                                    widthError = false;
                                            return false;
                                } else if (!validateWidthData(widthValue)){
                                    $('#check-width-value').show();
                                    widthError = false;
                                            return false;
                                } else {
                                    $('#check-width').hide();
                                    $('#check-width-value').hide();
            
                                }
                        }
            
                        function validateWidthData(widthValue){
                            var widthpattern = new RegExp(/^[0-9]+$/);
                            return widthpattern.test(widthValue);
                        }


                           // **length validation **

                    $('#check-length').hide();
                    $('#check-length-value').hide();
            
                    let lengthError = true;
                    
                    $('#length').keyup(function () {
                        validateLength();
                        
                        });
                    
                        function validateLength() {
                            let lengthValue = $('#length').val();
                                if (lengthValue.length == "") {
                                    $('#check-length').show();
                                    lengthError = false;
                                            return false;
                                } else if (!validateLengthData(lengthValue)){
                                    $('#check-length-value').show();
                                    lengthError = false;
                                            return false;
                                } else {
                                    $('#check-length').hide();
                                    $('#check-length-value').hide();
            
                                }
                        }
            
                        function validateLengthData(lengthValue){
                            var lengthpattern = new RegExp(/^[0-9]+$/);
                            return lengthpattern.test(lengthValue);
                        }

        
            $('#submit-btn').click(function () {
                validateSku();
                validateName();
                validatePrice();
                validateSize();
                validateWeight();
                validateHeight();
                validateWidth();
                validateLength();
            });

            

});