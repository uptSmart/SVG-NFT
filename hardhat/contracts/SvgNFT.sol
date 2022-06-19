//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "./ERC721Tradable.sol";

/**
 * @title SvgNFT
 * SvgNFT - a contract for my non-fungible creatures 
 */
contract SvgNFT is ERC721Tradable {

    /**
     * @dev creator the contract of SvgNFT
     * @param _name                 name of the erc721 token
     * @param _symbol               symbol of the erc721 token
     * @param _proxyRegistryAddress proxy registry address compatible with OpenSea
     */
    constructor(string memory _name,
                string memory _symbol,
                address _proxyRegistryAddress)
        ERC721Tradable(_name, _symbol, _proxyRegistryAddress){
    }


    /**
     * @dev geth the individual paths of the SVG image. (SVF-NFTs).
     * @param _tokenId              tokenId related to nft tokenURI
     */
    function tokenURI(uint256 _tokenId)
        public view override returns (string memory){
       return idToTokenUri[_tokenId];
    }

     /**
     * @dev TODO add the logic of color paths
     */



}
