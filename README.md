# NFTmetadataConverterSTX
This project converts json metadata from your nft collection to be used for the minting smart contract on byzantion 

Generator used to generate the NFT collection:  
https://nft-inator.com/  
  
Generated json files will be ready for your smart contract on:  
https://byzantion.xyz/tools/launchpad  
  
The batch file checks if a folder named "byzantionJSON" exists in the directory it was started. If yes it asks if you want to delete the old folder.  
If no folder with this name exists it will create one.  
Then it searchs the folder it is started in for all .json files. If a line of one of those files contains "trait_type" or "value" it writes it into a json file with the same name but into to directory /byzantionJSON/  
  
I am aware that the batch file is very slow, I was thinking of developing a solution with c# or c++, it should be easy to use without much dependencies.  
Feel free to suggest any improvements and report bugs.  
