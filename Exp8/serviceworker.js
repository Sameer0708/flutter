let deferredPrompt;
window.addEventListener('beforeinstallprompt',(event)=>{
    event.preventDefault();
    deferredPrompt=event;
    showAddToHomeScreenButton();
});

function showAddToHomeScreenButton(){
        const addToHomeScreenButton = document.getElementById(add-to-home-screen-button);
        addToHomeScreenButton.style.display = 'block';
        addToHomeScreenButton.addEventListener('click',()=>{
            deferredPrompt.prompt();
            deferredPrompt.userChoice.then((choiceResult)=>{
                if(choiceResult==='accepted'){
                    console.log("User Accepted Add to Home Screen");
                }
                else{
                    console.log("User Dismissed Add to Home Screen");
                }
            })
        });
    }