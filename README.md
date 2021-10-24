# node-docker

Node.js 開發環境的容器化：

- 省得在電腦安裝 Node.js
- 避免未來指定特定版本的麻煩

**Notice！**

1. docker-compose 後 務必使用 VSCode Remote
   1. Attach to the container in VSCode.
   2. Enjoy it.
        [Quick and dirty Docker development environment for Node.js apps](https://dev.to/danielgaldev/quick-and-dirty-docker-development-environment-for-node-js-apps-3da9)
2. VSCode 想透過 「Docker」 Attach in VSCode 的話務必變更 ssh config 的密鑰路徑（IdentityFile），否則會出現「找不到檔案」的錯誤。

    ```json
    Host serverip
        HostName serverip
        User id user_id
        IdentityFile C:\Users\user_id\.ssh\id_rsa
    ```
