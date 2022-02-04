export const sampleGame = (input: string): number => {

  let total = 0;
  const numbers = input.split(',');

  numbers.forEach(element => {
    
    element = element.replace('--', '00');
    element = element.replace('-', '0');

    let secondRolls = element.charAt(1) ;
    //spare 
    if(secondRolls === '/'){

        
    }

    total += parseInt(element.charAt(0)) + parseInt(element.charAt(1));
  });

  return total;
}
