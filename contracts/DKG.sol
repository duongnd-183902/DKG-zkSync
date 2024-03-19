// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./libs/CurveBabyJubJub.sol";
import "./interfaces/IDKG.sol";
// import "./interfaces/IVerifier.sol";
// import "./interfaces/IVerifier.sol";
// import "./libs/Math.sol";
// import "./Opcode.sol";

contract DKG is IDKG  {
    BabyJubPoint public PK_COMMITTEE;
    constructor() {

        PK_COMMITTEE = BabyJubPoint(0, 1);

    }

    function addPKCommittee(BabyJubPoint[] calldata P) external  {
        (PK_COMMITTEE.x, PK_COMMITTEE.y) = CurveBabyJubJub.pointAdd(PK_COMMITTEE.x, PK_COMMITTEE.y, P[0].x, P[0].y);

    }

}
