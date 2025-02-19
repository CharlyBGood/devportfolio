import { LightningElement } from 'lwc';
import images from '@salesforce/resourceUrl/PortfolioImages';

export default class Hero extends LightningElement {  
	imageURL = images + '/myprofileph.jpg';
}