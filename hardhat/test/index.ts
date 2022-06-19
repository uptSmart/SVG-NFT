import { expect } from "chai";
import { Contract } from "ethers";
import { ethers } from "hardhat";

describe("SvgNFT", function () {


  let svgNFTContract:Contract;
  before(async () => {
    
    const svgNFTFactry = await ethers.getContractFactory("SvgNFT");
    svgNFTContract = await svgNFTFactry.deploy(
              "test1",
              "TST1",
              "0xa5409ec958C83C3f309868babACA7c86DCB077c1"
      );
  
  });


  it("mint the nft with baseURI and get baseURI from tokenId", async function () {

    const baseURI =  "https://www.youtube.com/";
    
    await svgNFTContract.mintTo(
        "0x8a86bacE2089204e8eBf25f55dBb9582e8556302",
         1,
         baseURI
    );

    expect(await svgNFTContract.tokenURI(1)).to.equal(baseURI);
    

  });

});






