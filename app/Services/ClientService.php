<?php
/**
 * Created by PhpStorm.
 * User: luis
 * Date: 25/09/16
 * Time: 11:05
 */

namespace CodeDelivery\Services;


use CodeDelivery\Repositories\ClientRepository;
use CodeDelivery\Repositories\ClientRepositoryEloquent;
use CodeDelivery\Repositories\UserRepository;

class ClientService
{

    /**
     * @var ClientRepository
     */
    private $clientRepository;
    /**
     * @var UserRepository
     */
    private $userRepository;

    public function __construct(ClientRepository $clientRepository, UserRepository $userRepository)
    {

        $this->clientRepository = $clientRepository;
        $this->userRepository = $userRepository;
    }

    public function update(array $data,$id)
    {
        //   $data['user']['password'] = bcrypt(123456);
        $userId = $this->userRepository->update($data['user'],$id)->id;
        //dd($userId);
        $data['user_id'] = $userId;
        $this->clientRepository->update($data,$userId);

        return view('admin.clients.index');
    }

    public function store(array $data)
    {
        $data['user']['password'] = bcrypt(123456);
        $userId = $this->userRepository->create($data['user'])->id;
        $data['user_id'] = $userId;
        $this->clientRepository->create($data);

        return view('admin.clients.index');
    }
}