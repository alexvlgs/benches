import places from 'places.js';

const initAutocomplete = () => {
    const locationInput = document.getElementById('bench_location');
    if (locationInput) {
        places({ container: locationInput });
    }
};

export { initAutocomplete };